class Subject < ActiveRecord::Base

	scope :visible, lambda{ where(:visible=> true).where(:position => 1)}
	scope :invisible, lambda{ where(:visible=> false)}

	scope :sorted, lambda{ order("subjects.position ASC")}
	scope :new_first, lambda{ order("subjects.created_at DESC")}

	scope :search, lambda{ |query|
		where(["subjects.name LIKE ?", "%#{query}%"])
	}
end
