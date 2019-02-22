<section class="lots">
	<div class="lots__header">
		<h2>Открытые лоты</h2>
	</div>
	<ul class="lots__list">

		<?php foreach ($auction as $lot): ?>

			<!--заполните этот список из массива с товарами-->
			<li class="lots__item lot">
				<div class="lot__image">
					<img src="<?=htmlspecialchars($lot['pic_url']) ?>" width="350" height="260" alt="<?=htmlspecialchars($lot['name']) ?>">
				</div>
				<div class="lot__info">
					<span class="lot__category"><?=$lot['category'] ?></span>
					<h3 class="lot__title"><a class="text-link" href="../pages/lot.html"><?=htmlspecialchars($lot['name']) ?></a></h3>
					<div class="lot__state">
						<div class="lot__rate">
							<span class="lot__amount">Стартовая цена</span>
							<span class="lot__cost">
                                        <?=(price_change($lot['price']));?>
                            </span>
						</div>
						<div class="lot__timer timer">
							12:23
						</div>
					</div>
				</div>
			</li>

		<?php endforeach; ?>

	</ul>
</section>