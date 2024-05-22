class SearchQueriesController < ApplicationController
  def create
    query = params[:query]
    ip = request.remote_ip

    SearchQuery.record(query, ip) if query.present?
    SearchQuery.update_analytics(query) if query.present?

    head :ok
  end
end
