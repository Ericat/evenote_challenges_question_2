require './command'

describe 'Command' do

  let(:command) { Command.new }
  
  it "should be accepting user input correctly" do
    command.stub(:gets) {'6'}
    command.should_receive(:gets).exactly(8).times
    command.parse
  end

  it 'should raise an error if term size is < 0'do
    command.stub(:gets) {'0'}
    expect{command.parse}.to raise_error("Wrong input")
  end

  it 'should raise an error if term size >25' do
    command.stub(:gets) {'26'}
    expect {command.parse}.to raise_error("Wrong input")
  end
end