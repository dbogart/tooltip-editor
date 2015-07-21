require 'json'

namespace :json do
    desc "Export all data to JSON files"
    task :export => :environment do
        Rails.application.eager_load!

        tooltipCollection = []
        tooltips = Tooltip.includes(:states)

        tooltips.each do |t|

          t.states.each do |s|
            tooltip = {"key": t.term, "value": t.definition, "module": s.name}
            tooltipCollection.push(tooltip)
          end

        end

        if tooltipCollection.length > 2
          file = File.open(File.join(Rails.root, "db", "export", "tooltip.constants.js"), 'w')
          file.write "(function () { \n 'use strict'; \n var Tooltip = "
          file.write JSON.pretty_generate(tooltipCollection)
          file.write ";\n"
          file.write "angular.module('common.tooltip', []).constant('Tooltip', Tooltip); }());"
          file.close
        end

    end
end
