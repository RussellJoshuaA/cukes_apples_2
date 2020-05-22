require 'appium_lib'

PROJECT_DIR = File.absolute_path('../..', File.dirname(__FILE__))

capabilities = {
    caps: {
        platformName: 'android',
        deviceName: '25dd7961611c7ece',
        app: "#{PROJECT_DIR}/resources/wikipedia.apk"
    }
}

begin
  driver = Appium::Driver.new(capabilities, false)
  driver.start_driver
rescue Exception => e
  p e.message
  p e.backtrace
end