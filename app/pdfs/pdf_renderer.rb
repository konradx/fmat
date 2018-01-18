class PdfRenderer
  include Prawn::View

  def initialize(invoice)
    @invoice= invoice
    say_hello
  end
  def say_hello
    text "Invoice No #{@invoice.reference_number}", size: 45, style: :bold
    text "Issue Date: #{@invoice.issue_date}", size: 16, style: :italic
    text "Due Date: #{@invoice.due_date}", size: 16, style: :italic
  end

end
