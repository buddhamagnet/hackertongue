require 'spec_helper'

describe Hacker do
  before :all do
    Hacker.create!([
      { username: 'buddhamagnet', language: 'Ruby' },
      { username: 'buddhanurse', language: 'Ruby' },
      { username: 'buddhadoc', language: 'Ruby' },
      { username: 'buddhahacker', language: 'Clojure' },
      { username: 'buddhageek', language: 'Clojure' },
      { username: 'buddhaleet', language: 'Go' },
    ])
  end

  it "should return the most popular language" do
    Hacker.most_popular.should eql("Ruby")
  end

  it "should not return the least popular language" do
    Hacker.most_popular.should_not eql("Perl")
  end
end
