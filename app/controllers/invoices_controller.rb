class InvoicesController < ApplicationController
	def index
		@invoices = Invoice.all
	end
  def show
    @invoice = Invoice.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
          pdf = PdfRenderer.new(@invoice)
          send_data pdf.render, filename: "invoice-#{@invoice.reference_number}.pdf",
                                type: "application/pdf",
                                disposition: "inline"
      end
    end
  end
  def edit
    @invoice = Invoice.find(params[:id])
  end
  def new
    @invoice = Invoice.new
  end
  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.save
    redirect_to @invoice, notice: "Invoice succesfully created!"
  end
  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update(invoice_params)
      redirect_to @invoice, notice: "Invoice succesfully updated!"
    else
      render :edit
    end
  end
  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to invoices_path, notice: "Invoice succesfully deleted!"
  end

  private
  def invoice_params
    params.require(:invoice).permit(:reference_number, :issue_date, :due_date, :status, :tax, :discount, :net_amount, :gross_amount, :paid_amount, :currency)
  end
end
