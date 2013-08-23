require_relative '../quiz'
#  __    __    _______  __    __
# |  |  |  |  /  _____||  |  |  |
# |  |  |  | |  |  __  |  |__|  |
# |  |  |  | |  | |_ | |   __   |
# |  `--'  | |  |__| | |  |  |  |
#  \______/   \______| |__|  |__|

describe "a quiz" do
  it "should be about Ruby and Testing in Rspec" do
    expect(QUIZ_TOPICS).to include("ruby")
    expect(QUIZ_TOPICS).to include("rspec")
    expect(QUIZ_TOPICS).to include("testing")
  end

  it "should have a length of 1 after adding a number to it " do
    quiz = Quiz.new
    quiz.add(5)
    expect(quiz.numbers.length).to eq(1)
  end

  it "should have a length of 1 after adding an array of numbers to it" do
    quiz = Quiz.new
    quiz.add([5,3])
    expect(quiz.numbers.length).to eq(1)
  end

  it "if we try to add a string to numbers it should go to trash" do
    quiz = Quiz.new
    quiz.add("I love you, mom")
    expect(quiz.numbers.length).to eq(0)
  end

end



# more in quiz.rb!