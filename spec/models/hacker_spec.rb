require 'spec_helper'

describe Hacker do
  before :all do
    Hacker.create!([
      { username: 'buddhamagnet', language: 'Ruby' },
      { username: 'buddhamagnet', language: 'Ruby' },
      { username: 'buddhamagnet', language: 'Ruby' },
      { username: 'buddhamagnet', language: 'Clojure' },
      { username: 'buddhamagnet', language: 'Clojure' },
      { username: 'buddhamagnet', language: 'Go' },
      { username: 'buddhamagnet', language: 'Perl' }
    ])
  end

  it "should return the most popular language" do
    Hacker.most_popular.should eql("Ruby")
  end
end
