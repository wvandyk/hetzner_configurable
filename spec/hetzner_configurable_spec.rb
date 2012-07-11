require 'spec_helper'

class Test; include HetznerConfigurable::Configurable; end
class OtherTest; include HetznerConfigurable::Configurable; end

describe HetznerConfigurable::Configurable do
  it "should be able to specify configuration to a class when mixed into the class" do
    Test.should respond_to(:config=)
  end

  it "should be able to get the configuration from a class when mixed into the class" do
    Test.should respond_to(:config)
  end

  it "should not overwrite the config of one class with the config of another class" do
    Test.config = { :test => :config }
    OtherTest.config = { :othertest => :config }
    Test.config.should_not eq OtherTest.config
  end

  context "per instance" do
    let(:test) { Test.new }

    it "should be able to specify the configuration to a specific instance of a class" do
      test.should respond_to(:config=)
    end

    it "should be able to retrieve the configuration of a specific instance of a class" do
      test.should respond_to(:config)
    end

    it "should not overwrite the config of the class if we set the config of an instance of the class" do
      Test.config = {:class => :config}
      test.config = {:instance => :config}
      Test.config.should_not eq test.config
    end

  end
end
