module SubtleData
  class Category
    attr_accessor :items, :has_items, :instructional_text, :category_images, :category_id, :has_subcategories, :category_name, :category_parent_id

    # :internal => :external
    def self.attribute_map
      {
        :items => :items, :has_items => :has_items, :instructional_text => :instructional_text, :category_images => :category_images, :category_id => :pos_category_id, :has_subcategories => :has_subcategories, :category_name => :pos_category_name, :category_parent_id => :pos_category_parent_id

      }
    end

    def initialize(attributes = {})
      # Morph attribute keys into undescored rubyish style
      if attributes.to_s != ""

        if Category.attribute_map["items".to_sym] != nil
          name = "items".to_sym
          value = attributes["items"]
          if value.is_a?(Array)
            array = Array.new
            value.each do |arrayValue|
              array.push MenuItemDetail.new(arrayValue)
            end
            send("#{name}=", array) if self.respond_to?(name)
          end
        end
        if Category.attribute_map["has_items".to_sym] != nil
          name = "has_items".to_sym
          value = attributes["has_items"]
          send("#{name}=", value) if self.respond_to?(name)
        end
        if Category.attribute_map["instructional_text".to_sym] != nil
          name = "instructional_text".to_sym
          value = attributes["instructional_text"]
          send("#{name}=", value) if self.respond_to?(name)
        end
        if Category.attribute_map["category_images".to_sym] != nil
          name = "category_images".to_sym
          value = attributes["category_images"]
          if value.is_a?(Array)
            array = Array.new
            value.each do |arrayValue|
              array.push CategoryImage.new(arrayValue)
            end
            send("#{name}=", array) if self.respond_to?(name)
          end
        end
        if (attr = Category.attribute_map[:category_id]) != nil
          name = :category_id
          value = attributes[attr.to_s]
          send("#{name}=", value) if self.respond_to?(name)
        end
        if Category.attribute_map["has_subcategories".to_sym] != nil
          name = "has_subcategories".to_sym
          value = attributes["has_subcategories"]
          send("#{name}=", value) if self.respond_to?(name)
        end
        if (attr = Category.attribute_map[:category_name]) != nil
          name = :category_name
          value = attributes[attr.to_s]
          send("#{name}=", value) if self.respond_to?(name)
        end
        if (attr = Category.attribute_map[:category_parent_id]) != nil
          name = :category_parent_id
          value = attributes[attr.to_s]
          send("#{name}=", value) if self.respond_to?(name)
        end
      end
    end

    def to_body
      body = {}
      Category.attribute_map.each_pair do |key,value|
        body[value] = self.send(key) unless self.send(key).nil?
      end
      body
    end
  end

end
