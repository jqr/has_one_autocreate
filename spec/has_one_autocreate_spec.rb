require 'spec'
require 'has_one_autocreate'
require 'fileutils'

class User < ActiveRecord::Base
  has_one :profile, :autocreate => true
end

class Profile < ActiveRecord::Base
  belongs_to :user
end

describe HasOneAutocreate do
  before(:all) do 
    ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
                                            :database => 'test.sqlite3')
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
    
    FileUtils.rm('test.sqlite3')
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
