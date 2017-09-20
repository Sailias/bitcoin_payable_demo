module ApplicationHelper

  def donation_text(donation)
    if donation.status.eql?("received")
      "has been <span class='#{donation.status}'>Received</span>".html_safe
    else
      "is <span class='#{donation.status}'>Pending</span>".html_safe
    end
  end

end
