# frozen_string_literal: true

module WhatsappSdk
  module Resource
    class Template
      module Status
        PENDING_DELETION = "PENDING_DELETION"
        APPROVED = "APPROVED"
        PENDING = "PENDING"
        REJECTED = "REJECTED"

        STATUSES = [PENDING_DELETION, APPROVED, PENDING, REJECTED].freeze

        def valid?(status)
          STATUSES.include?(status)
        end

        def serialize(status)
          STATUSES.include?(status) ? status : nil
        end
      end

      module Category
        AUTHENTICATION = "AUTHENTICATION"
        MARKETING = "MARKETING"
        UTILITY = "UTILITY"

        CATEGORIES = [AUTHENTICATION, MARKETING, UTILITY].freeze

        def self.valid?(category)
          CATEGORIES.include?(category)
        end

        def self.serialize(category)
          CATEGORIES.include?(category) ? category : nil
        end
      end

      attr_accessor :id, :status, :category, :language, :name, :components_json

      def initialize(id:, status:, category:, language: nil, name: nil, components_json: nil)
        @id = id
        @status = status
        @category = category
        @language = language
        @name = name
        @components_json = components_json
      end
    end
  end
end
