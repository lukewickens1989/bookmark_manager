require 'bookmark'

describe Bookmark do
let(:bm) {Bookmark.new}

  it "should be an instance of described_class" do
    expect(bm).to be_instance_of(described_class)
  end

  # it "should be initialized with an array of bookmarks" do
  #   expect(bm.bookmarks).to eq([])
  # end

  describe '#all' do
    it "shows the array" do
      # bm.bookmarks = ["bob"]
      expect(Bookmark.all).to eq(["bob"])
    end
  end

end
