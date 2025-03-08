# frozen_string_literal: true

require_relative "show_buckets/version"
require "aws-sdk-s3"

module ShowBuckets
  class Error < StandardError; end

  class BucketLister
    def initialize
      @s3 = Aws::S3::Client.new
    end

    def list_buckets
      response = @s3.list_buckets
      response.buckets.map(&:name)
    rescue Aws::S3::Errors::ServiceError => e
      puts "Error listing buckets: #{e.message}"
      []
    end
  end
end
