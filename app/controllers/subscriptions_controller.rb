class SubscriptionsController < ApplicationController
  def create
    puts params
    pub_ids = params[:subscription][:publication_id]
    pub_ids.each do |pub_id|
      Subscription.create({
        reader_id: current_reader.id,
        publication_id: pub_id
      })
    end
    binding.pry
  end
end