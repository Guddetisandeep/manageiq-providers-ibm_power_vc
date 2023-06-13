class ManageIQ::Providers::IbmPowerVc::CloudManager::EventCatcher::Runner < ManageIQ::Providers::Openstack::CloudManager::EventCatcher::Runner
    def add_openstack_queue(event)
        event_hash = ManageIQ::Providers::IbmPowerVc::CloudManager::EventParser.event_to_hash(event, @cfg[:ems_id])
        EmsEvent.add_queue('add', @cfg[:ems_id], event_hash)
      end
end
