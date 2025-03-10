class CalcController < ApplicationController

  def square
    render({:template => "calc_templates/square_calc"})
  end
  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num **2
    render({:template => "calc_templates/square_results"})
  end

  def square_root
    render({:template => "calc_templates/square_root_calc"})
  end
  def square_root_results
    @the_num = params.fetch("square_root").to_f
    @the_result = @the_num **0.5
    render({:template => "calc_templates/square_root_results"})
  end

  def payment
    render({:template => "calc_templates/payment_calc"})
  end
  
  def payment_results
    @the_rate = params.fetch("users_apr").to_f
    @the_rate = @the_rate/1200
    @the_n = params.fetch("users_year").to_f 
    @the_n = @the_n*12
    @the_pv = params.fetch("users_pv").to_f
    @the_payment = @the_rate*@the_pv/(1-1/((1+@the_rate)**@the_n)).round(2)
    @the_rate_pres = @the_rate *1200
    @the_n = @the_n/12
    
    render({:template => "calc_templates/payment_results"})
    end

    def random
      render({:template => "calc_templates/random_calc"})
    end
    def random_results
      @min = params.fetch("users_min").to_f
      @max = params.fetch("users_max").to_f
      @the_result = rand(@min..@max)
      render({:template => "calc_templates/random_results"})
    end


  end
