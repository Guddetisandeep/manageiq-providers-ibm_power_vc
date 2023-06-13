ManageIQ::Providers::Openstack::CloudManager::EventTargetParser.include(ActsAsStiLeafClass)

class ManageIQ::Providers::IbmPowerVc::CloudManager::EventTargetParser < ManageIQ::Providers::Openstack::CloudManager::EventTargetParser
  def event_payload
    @event_payload ||= ManageIQ::Providers::IbmPowerVc::EventParserCommon.message_content(ems_event).fetch('payload', {})
  end
end
