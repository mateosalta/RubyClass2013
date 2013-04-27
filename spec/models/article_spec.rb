require 'spec_helper'

describe Article do

before { @article = Article.new(title: "Example title", body:
	"this is a body")}

subject { @article }

it { should respond_to(:title)}
it { should respond_to(:body)}

it {should_not respond_to(:ratings)}

describe "when body is not present" do

	before { @article.body = "" }
	it { should_not be_valid }
end

describe "when title is not present" do
	before { @article.title = "" }
	it { should_not be_valid }
end
end
