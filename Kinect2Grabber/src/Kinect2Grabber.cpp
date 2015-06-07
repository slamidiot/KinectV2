#include <Kinect2Grabber/Kinect2Grabber.h>



namespace kinect
{

Kinect2Grabber::Kinect2Grabber()
{
	
	if(freenect2_.enumerateDevices()==0)
	{
		std::cout<<"No devices connected"<<std::endl;
		exit(EXIT_FAILURE);
	}
	deviceSerial_ = freenect2_.getDefaultDeviceSerialNumber();

	std::cout<<"Found device with [DEVICE SERIAL] : "<<deviceSerial_<<std::endl;
	
	//difference between pipeline methods...vs without pipeline?
	std::cout<<"Opening device interface..."<<std::endl;

	pipeline_ = new libfreenect2::OpenCLPacketPipeline();

	dev_ = freenect2_.openDevice(deviceSerial_,pipeline_);


	if(dev_!=NULL)
		std::cout<<"Device object created... "<<std::endl;

	listener = new libfreenect2::SyncMultiFrameListener(libfreenect2::Frame::Color | libfreenect2::Frame::Depth | libfreenect2::Frame::Ir);

	dev_->setColorFrameListener(listener);
	dev_->setIrAndDepthFrameListener(listener);

	dev_->start();


}

Kinect2Grabber::~Kinect2Grabber()
{

	listener->release(frames_);

	dev_->stop();
	dev_->close();

	//delete frame listener object
	delete listener;

	
	std::cout<<"Kinect Grabber object destroyed"<<std::endl;
}


FrameData& Kinect2Grabber::getFrameData() 
{

	listener->waitForNewFrame(frames_);

	std::cout<<"Requesting Frame data"<<std::endl;

	libfreenect2::Frame *rgb = frames_[libfreenect2::Frame::Color];
	libfreenect2::Frame *depth = frames_[libfreenect2::Frame::Depth];
	libfreenect2::Frame *ir = frames_[libfreenect2::Frame::Ir];

	data_.color_ = cv::Mat(rgb->height,rgb->width,CV_8UC3,rgb->data);
	data_.depth_ = cv::Mat(depth->height,depth->width,CV_32FC1,depth->data)/4500.0f;
	data_.IR_	 = cv::Mat(ir->height,ir->width,CV_32FC1,ir->data)/20000.0f;

	return data_;
}

}