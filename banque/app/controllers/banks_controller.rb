class BanksController < ApplicationController
  def index
    @accounts = Account.all
  end

  def deposit
    @account = Account.find_by_id(params[:account_id])
    @account.balance = @account.balance + params[:amount].to_f
    @account.save
  end

  def add_account
    @account = Account.create(name: params[:name], balance: params[:amount])
  end

  def accounts
    @accounts = Account.all

    data = @accounts
    render :json => { data: data}

  end
end