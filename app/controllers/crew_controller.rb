class CrewController < ApplicationController
  def crewsubmit
    @crew_params = params
    @raceinformation = params[:raceinformation]
    name = params[:new_crew_member_name]
    email = params[:new_crew_member_email]
    notifications = params[:new_crew_member_notifications]
    tel = params[:new_crew_member_tel]
    bio = params[:new_crew_member_bio]
    binding.pry
    CrewMember.create(name: name, email: email, tel: tel, bio: bio, notifications: notifications)
  end
end
