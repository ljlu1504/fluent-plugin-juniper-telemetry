# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require 'jvision_top.pb'


##
# Message Classes
#
class Firewall < ::Protobuf::Message; end
class FirewallStats < ::Protobuf::Message; end
class MemoryUsage < ::Protobuf::Message; end
class CounterStats < ::Protobuf::Message; end
class PolicerStats < ::Protobuf::Message; end
class ExtendedPolicerStats < ::Protobuf::Message; end
class HierarchicalPolicerStats < ::Protobuf::Message; end


##
# Message Fields
#
class Firewall
  repeated ::FirewallStats, :firewall_stats, 1
end

class FirewallStats
  required :string, :filter_name, 1
  optional :uint64, :timestamp, 2
  repeated ::MemoryUsage, :memory_usage, 3
  repeated ::CounterStats, :counter_stats, 4
  repeated ::PolicerStats, :policer_stats, 5
  repeated ::HierarchicalPolicerStats, :hierarchical_policer_stats, 6
end

class MemoryUsage
  required :string, :name, 1
  optional :uint64, :allocated, 2
end

class CounterStats
  required :string, :name, 1
  optional :uint64, :packets, 2
  optional :uint64, :bytes, 3
end

class PolicerStats
  required :string, :name, 1
  optional :uint64, :out_of_spec_packets, 2
  optional :uint64, :out_of_spec_bytes, 3
  optional ::ExtendedPolicerStats, :extended_policer_stats, 4
end

class ExtendedPolicerStats
  optional :uint64, :offered_packets, 1
  optional :uint64, :offered_bytes, 2
  optional :uint64, :transmitted_packets, 3
  optional :uint64, :transmitted_bytes, 4
end

class HierarchicalPolicerStats
  required :string, :name, 1
  optional :uint64, :premium_packets, 2
  optional :uint64, :premium_bytes, 3
  optional :uint64, :aggregate_packets, 4
  optional :uint64, :aggregate_bytes, 5
end


##
# Extended Message Fields
#
class ::JuniperNetworksSensors < ::Protobuf::Message
  optional ::Firewall, :jnpr_firewall_ext, 6, :extension => true
end

