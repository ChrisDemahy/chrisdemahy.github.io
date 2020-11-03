require 'spec_helper'
$test_pages.each do |test_page|
    describe test_page, js: true do
        # For Each Page

        before(:all) { visit($baseurl + '/' + test_page) } # go to the page

        it 'Renders Properly' do
            expect(page.status_code).to eq(200)
        end
        it 'has footer' do
            expect(page).to have_css('.footer')
        end
    end
end
