class FinanceiroController < ApplicationController
  def movimentacao
  	redirect_to :controller => 'transactions', :action => 'index' 
  end

  def contasapagar
  end

  def contasareceber
  end

  def aprovacao
  end

end