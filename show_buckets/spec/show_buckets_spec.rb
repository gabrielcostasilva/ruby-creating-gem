# frozen_string_literal: true

require "show_buckets"
require "aws-sdk-s3"
require "spec_helper"

RSpec.describe ShowBuckets::BucketLister do
  let(:s3_client) { instance_double(Aws::S3::Client) }
  let(:bucket_lister) { described_class.new }

  before do
    allow(Aws::S3::Client).to receive(:new).and_return(s3_client)
  end

  describe "#list_buckets" do
    context "when there are buckets" do
      it "returns a list of bucket names" do
        buckets = [instance_double(Aws::S3::Types::Bucket, name: "bucket1"),
                   instance_double(Aws::S3::Types::Bucket, name: "bucket2")]
        response = instance_double(Aws::S3::Types::ListBucketsOutput, buckets: buckets)

        allow(s3_client).to receive(:list_buckets).and_return(response)

        expect(bucket_lister.list_buckets).to eq(%w[bucket1 bucket2])
      end
    end

    context "when there are no buckets" do
      it "returns an empty list" do
        response = instance_double(Aws::S3::Types::ListBucketsOutput, buckets: [])

        allow(s3_client).to receive(:list_buckets).and_return(response)

        expect(bucket_lister.list_buckets).to eq([])
      end
    end

    context "when an error occurs" do
      it "returns an empty list and prints an error message" do
        allow(s3_client).to receive(:list_buckets).and_raise(Aws::S3::Errors::ServiceError.new(nil, "Some error"))

        expect(bucket_lister.list_buckets).to eq([])
      end
    end
  end
end
