module ApplicationHelper
	def bootstrap_class_for_flash(type)
		case type
			when "notice" then "alert-info"
			when "success" then "alert-success"
			when "errors" then "alert-danger"
			when "alert" then "alert-warning"
		end
	end

	def jobs
		arr = []
		Job.all.each do |job|
			arr << job.field
		end
		return arr.to_set
	end

	def buisness
		arr = []
		Job.all.each do |job|
			arr << job.buisness
		end
		return arr.to_set
	end

	def city_jobs
		arr = []
		Job.all.each do |job|
			arr << job.city
		end
		return arr.to_set
	end

	# méthode pour l'index fields
	def find_jobs
		arr = []
		fields = Field.all
		fields.each do |field|
			unless Job.find_by(field: field) == nil
				arr << Job.find_by(field: field)
			end
		end
		return arr
	end
	
end

