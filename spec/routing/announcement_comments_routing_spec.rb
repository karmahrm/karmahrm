require 'rails_helper'

RSpec.describe AnnouncementCommentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/announcement_comments').to route_to('announcement_comments#index')
    end

    it 'routes to #new' do
      expect(get: '/announcement_comments/new').to route_to('announcement_comments#new')
    end

    it 'routes to #show' do
      expect(get: '/announcement_comments/1').to route_to('announcement_comments#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/announcement_comments/1/edit').to route_to('announcement_comments#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/announcement_comments').to route_to('announcement_comments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/announcement_comments/1').to route_to('announcement_comments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/announcement_comments/1').to route_to('announcement_comments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/announcement_comments/1').to route_to('announcement_comments#destroy', id: '1')
    end
  end
end
