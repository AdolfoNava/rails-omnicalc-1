class OmnicalcController < ApplicationController
    def sqrtForm
        render({:template => 'forms/sqrt'})
    end

    def rngForm
        render({:template => 'forms/rng'})
    end
    
    def paymentForm
        render({:template => 'forms/payment'})
    end
    
    def squareForm
        render({:template => 'forms/square'})
    end
    
    def sqrtResults
        @num = params.fetch("user_number")
        @numAnswer = Math.sqrt(@num.to_f)
        render({:template => 'results/sqrt'})
    end

    def rngResults
        @userMin = params.fetch(:user_min).to_f
        @userMax = params.fetch(:user_max).to_f
      
        @answer = rand(@userMin..@userMax)
        render({:template => 'results/rng'})
    end
    
    def paymentResults
        @apr = params.fetch(:user_apr)
        @numOfYears = params.fetch(:user_years)
        @principal = params.fetch(:user_pv)
        @number = @numOfYears.to_f * 12.0
        @numerator = (@apr.to_f/1200) * @principal.to_f
        @demoninator = 1 - (1 + (@apr.to_f)/1200) ** -@number
        
        @answer = @numerator/@demoninator
        render({:template => 'results/payment'})
    end
    
    def squareResults
        @num = params.fetch(:number)
  
        @answer = @num.to_f * @num.to_f
        render({:template => 'results/square'})
    end
end
