class EventsController < ApplicationController

  def new
    @user = User.find(current_user['id'])
    @event = EventRandom.new
  end



  def random
    event_params = params
    @user = User.find(current_user['id'])
    @event = EventRandom.new()
    array_name = []
    array_email = []


    @event['max_amount'] = event_params['max_amount']
    @event['title'] = event_params['title']
    event_params.each_value { |key| array_name << key["name"] }
    event_params.each_value { |value| array_email << value["email"] }
    array_name << @user.firstname
    array_email << @user.email
    for data in array_email
      if data == nil
        array_name.delete(data)
        array_email.delete(data)
      end
    end

    hash_event = Hash[array_name.zip(array_email)]
    name_shuffle = array_name.shuffle
    assignments = name_shuffle.each_cons(2).to_a
    owner_assignments = [@user.firstname, @user.email]
    last_pair = assignments[0][0]
    first_pair = assignments[-1][-1]
    assignments << [first_pair, last_pair]

    @event['emails'] = assignments
    @event['user_id'] = current_user['id']
    @event.save(validate:false)
    
    for group in assignments
      j = 2
      for name in group
        j = j- 1
      end
      flash[:success] =  'Your event was created successfully'
      UserMailer.gift_test(hash_event[name], group[j],@event['max_amount'], @event['title']).deliver_now
    end

    #@event = EventRandom.new(event_params)
    #array_email = event_params['emails'].split(' ')
    #@event['emails'] = array_email
    #array_email.each do |mail|
    #  UserMailer.gift_test(mail).deliver_now
    #end
    #puts "HEREE :: #{User.find(session[:auth]['id'])} "
    #@event['user_id'] = current_user['id']
    #@event.save(validate:false)

    end



end