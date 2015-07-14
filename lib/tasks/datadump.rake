namespace :json do
    desc "Export all data to JSON files"
    task :export => :environment do
        Rails.application.eager_load!

        file = File.open(File.join(Rails.root, "db", "export", "tooltips.json"), 'w')

        tooltipCollection = []

        Tooltip.all.each do |t|
          tooltipCollection.push(t.to_json(include: {states: { only: :name } }, except: [:id, :created_at, :updated_at, :updated_by]))
        end

        file.write tooltipCollection
        file.close
    end
end
