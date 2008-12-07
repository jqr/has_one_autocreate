require File.join(File.dirname(__FILE__), 'spec_helper')


describe HasOneAutocreate do
  before(:all) do 
    ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
      :database => TEST_DATABASE_FILE)
      
    User.connection.create_table :users do |t|
      t.string :name
    end
    
    Profile.connection.create_table :profiles do |t|
      t.integer :user_id
    end
  end
  
  after(:all) do
    User.connection.drop_table(:users)
    Profile.connection.drop_table(:profiles)
    
    FileUtils.rm(TEST_DATABASE_FILE) if File.exist?(TEST_DATABASE_FILE)
  end
  
  before(:each) do
    @user = User.create(:name => 'Dr. User')
  end

  describe 'before accessing the profile' do
    it "has NOT created the profile" do
      Profile.count.should == 0
    end
  end

  describe 'after accessing the profile' do
    before(:each) do
      @profile = @user.profile
    end
    
    it "creates the profile" do
      Profile.count.should_not == 0
    end
    
    it "is a profile" do
      @profile.should be_kind_of(Profile)
    end
  end

end
