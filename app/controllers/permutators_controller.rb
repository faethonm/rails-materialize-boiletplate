class PermutatorsController < ApplicationController
  def show
  end

  def new
    @permutator = Permutator.new
  end

  def create
    @permutator = Permutator.new(perm_params)
    if @permutator.save
      flash[:success] = 'Permutator created'
      redirect_to @permutator
    else
      flash[:danger] = 'We are fucked'
      render 'new'
    end
  end
end
