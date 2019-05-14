class MonstersController < ApplicationController
  def index
    @Monsters = Monster.all
  end
  
  def show
    @Monster = Monster.find(params[:id])
  end
  
  def new
    @Monster = Monster.new
  end
  
  def create
    @Monster = Monster.new(monster_params)

    if @Monster.save
      redirect_to monsters_path
    else
      render :new
    end
  end
  
  def edit
    @Monster = Monster.find(params[:id])
  end
  
  def update
    @Monster = Monster.find(params[:id])

    if @Monster.update(monster_params)
      redirect_to monsters_path
    else
      render :edit
    end
  end
  
  def destroy
    Monster.find(params[:id]).destroy
    redirect_to monsters_path
  end
  
  private
  
  def monster_params
    params.require(:monster).permit(
      :name, 
      :tags, 
      :ac, 
      :hp, 
      :ground_speed, 
      :fly_speed, 
      :str, 
      :dex, 
      :con, 
      :int, 
      :wis, 
      :cha, 
      :damage_immunity, 
      :condition_immunity, 
      :senses, 
      :languages, 
      :challenge, 
      :action
      )
  end
end
