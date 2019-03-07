class TablesController < ApplicationController
  before_action :table_set, only: :show

  def show
  end

  private

  def table_set
    @table = Table.find(params[:id])    
  end

end