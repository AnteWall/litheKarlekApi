class SecuredPingController < SecuredController

  def ping
    puts current_user.inspect
    render text: "All good. You only get this message if you're authenticated"
  end

end
