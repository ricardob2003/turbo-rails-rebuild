module TurboClone::ActionHelper
  def turbo_stream_action_tag(action, target:, template:)
    template = action == :remove ? '' : "<template>#{template}</template>"
    raise ArgumentError, 'target must be supplied' unless target = convert_to_turbo_stream_dom_id(target)

    %(<turbo-stream target="#{target}" action="#{action}">#{template}</turbo-stream>).html_safe
  end

  def convert_to_turbo_stream_dom_id(target)
    if target.respond_to?(:to_key)
      ActionView::RecordIdentifier.dom_id(target)
    else
      target
    end
  end
end
