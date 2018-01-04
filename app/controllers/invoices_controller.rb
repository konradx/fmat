class InvoicesController < ApplicationController
	def index
		@invoices = ['Invoice1', 'invoice 2', 'invoice 3']
	end
end
