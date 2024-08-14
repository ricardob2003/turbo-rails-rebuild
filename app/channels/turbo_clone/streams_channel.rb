class TurboClone::StreamsChannel < ActionCable::Channel::Base
  extend TurboClone::Streams::Broadcasts
  extend TurboClone::Streams::StreamName

  def subscribed
    stream_from params[:signed_stream_name]
    if verified_stream_name = self.class.verified_stream_name(params[:signed_stream_name])
      stream_from verified_stream_name
    else
      reject
    end
  end
end
