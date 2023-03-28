class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @memories = policy_scope(Memory)
    @memories = @memories.order(date: :desc, key_memory: :desc).first(15)
  end

  def about
  end
end
