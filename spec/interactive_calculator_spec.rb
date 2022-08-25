require "interactive_calculator"

describe InteractiveCalculator do
    it "makes calculations" do
        kernel = double :kernel

        expect(kernel).to receive(:puts).with("Hello. I will subtract two numbers.")
        expect(kernel).to receive(:puts).with("Please enter a number")
        expect(kernel).to receive(:gets).and_return("4")
        expect(kernel).to receive(:puts).with("Please enter another number")
        expect(kernel).to receive(:gets).and_return("3")
        expect(kernel).to receive(:puts).with("Here is your result:")
        expect(kernel).to receive(:puts).with("4 - 3 = 1")

        interactive_calculator = InteractiveCalculator.new(kernel)
        interactive_calculator.run

    end
end