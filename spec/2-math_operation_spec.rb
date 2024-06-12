require '../2-math_operation'

RSpec.describe MathOperation, "#MathOperation" do
    context "ADD X, Y" do
        it "should add correctly when X and Y are two positive integer numbers" do
            operation = MathOperation.new("ADD 7, 5")

            expect(operation.commit_operation).to eq (12)
        end

        it "should add correctly when X and Y are two negative integer numbers" do
            operation = MathOperation.new("ADD -7, -5")

            expect(operation.commit_operation).to eq (-12)
        end

        it "should add correctly when X is a negative integer and Y is a positive integer" do
            operation = MathOperation.new("ADD -7, 5")

            expect(operation.commit_operation).to eq (-2)
        end

        it "should add correctly when X is a positive integer and Y is a negative integer" do
            operation = MathOperation.new("ADD 7, -5")

            expect(operation.commit_operation).to eq (2)
        end

        it "should add correctly when X and Y are two positive floating point numbers." do
            operation = MathOperation.new("ADD 0.00000002, 0.00000002")

            expect(operation.commit_operation).to eq (0.00000004)
        end

        it "should add correctly when X and Y are two negative floating point numbers." do
            operation = MathOperation.new("ADD -0.00000002, -0.00000002")

            expect(operation.commit_operation).to eq (-0.00000004)
        end
    end
    context "SUB X, Y" do
        it 'should subtract correctly when X and Y are two positive integers' do
            operation = MathOperation.new("SUB 7, 2")

            expect(operation.commit_operation).to eq (5)
        end

        it 'should subtract correctly when X and Y are two negative integers' do
            operation = MathOperation.new("SUB -7, -2")

            expect(operation.commit_operation).to eq (-5)
        end

        it 'should subtract correctly when X is positive and Y is a negative integer' do
            operation = MathOperation.new("SUB 7, -2")

            expect(operation.commit_operation).to eq (9)
        end

        it 'should subtract correctly when X is negative and Y is a positive integer' do
            operation = MathOperation.new("SUB -7, 2")

            expect(operation.commit_operation).to eq (-9)
        end

        it "should sub correctly when X and Y are two positive floating point numbers." do
            operation = MathOperation.new("SUB 0.00000002, 0.00000002")

            expect(operation.commit_operation).to eq (0.0)
        end

        it "should sub correctly when X and Y are two negative floating point numbers." do
            operation = MathOperation.new("SUB -0.00000002, -0.00000002")

            expect(operation.commit_operation).to eq (0.0)
        end
    end
    context 'MUL X, Y' do
        it'should multiply correctly when X and Y are two positive integers'do
            operation = MathOperation.new("MUL 7, 2")
            expect(operation.commit_operation).to eq (14)
        end
        it'should multiply correctly when X and Y are two negative integers'do
            operation = MathOperation.new("MUL -7, -2")
            expect(operation.commit_operation).to eq (14)
        end
        it'should multiply correctly when X is positive integer and Y is a negative integer' do
            operation = MathOperation.new("MUL 7, -2")
            expect(operation.commit_operation).to eq (-14)
        end

        it'should multiply correctly when X is negative integer and Y is a positive integer' do
            operation = MathOperation.new("MUL -7, 2")
            expect(operation.commit_operation).to eq (-14)
        end
    end
    context 'DIV X, Y' do
        it'should divide correctly when X and Y are two positive integers'do
            operation = MathOperation.new("DIV 234, 34")
            expect(operation.commit_operation).to eq (6)
        end
        it'should divide correctly when X and Y are two negative integers'do
            operation = MathOperation.new("DIV -234, -34")
            expect(operation.commit_operation).to eq (6)
        end

        it'should raise error if dividing by zero'do
            operation = MathOperation.new("DIV 234, 0")
            expect(operation.commit_operation).to eq ("Divisão por zero é indefinida.")
        end

        it'should divide correctly when X is 0 and Y is a positive integer'do
            operation = MathOperation.new("DIV 0, 34")
            expect(operation.commit_operation).to eq (0)
        end

        it'should divide correctly when X is 0 and Y is a negative integer'do
            operation = MathOperation.new("DIV 0, -34")
            expect(operation.commit_operation).to eq (0)
        end
    end
    context 'ABS X, Y' do
        it 'should return error when using invalid operation' do
            operation = MathOperation.new("ABS 0, -34")
            expect(operation.commit_operation).to eq ("Operação inválida.")
        end
    end
end
