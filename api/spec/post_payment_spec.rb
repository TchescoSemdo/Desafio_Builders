require_relative '../lib/payment'

RSpec.describe Payment do
  let(:payment) { Payment.new }

  describe '#post_payment' do
    context 'quando o end-to-end é inválido' do
      it 'retorna o código de status 404 e a mensagem de erro' do
        payment_data = {
          end_to_end: $end_to_end,
          conciliation_id: $conciliation_id,
          amount: $total_value
        }
        response = payment.post_payment(*payment_data.values)
        puts response.body
        expect(response.code).to eq(404)        
      end 
    end      
  end
end
