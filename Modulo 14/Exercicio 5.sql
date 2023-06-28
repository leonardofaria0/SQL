/*5. A a��o de desconto da Asian Holiday Promotion foi uma das mais bem sucedidas da empresa. Agora, a Contoso quer entender um pouco melhor sobre o perfil dos clientes que compraram produtos com essa promo��o.
Seu trabalho � criar uma query que retorne a lista de clientes que compraram nessa promo��o.*/

--SELECT * FROM DimCustomer
--SELECT TOP(100) * FROM FactOnlineSales
--SELECT * FROM DimPromotion WHERE PromotionName = 'Asian Holiday Promotion'


SELECT
	*
FROM
	DimCustomer
WHERE CustomerKey IN(
		SELECT
			CustomerKey
		FROM
			FactOnlineSales
		WHERE PromotionKey IN(
				SELECT
					PromotionKey
				FROM
					DimPromotion
				WHERE PromotionName = 'Asian Holiday Promotion')
)