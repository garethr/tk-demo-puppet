describe 'our little webserver that could' do

  require 'faraday'

  before do
    @url = "http://localhost:8080"
    @response = Faraday.get @url
  end

  it 'should welcome us to Nginx' do
    @response.body.should =~ /Welcome to nginx/
  end

  it 'should return an OK status code' do
    @response.env[:status].should == 200
  end

end
