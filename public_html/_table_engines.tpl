<!-- <div class="table-responsive"> -->
<div style="margin-bottom: 16px;">
	<table class="table table-striped">
		<!-- head -->
		<thead>
			<tr>
				<th></th>
				{foreach from=$engines item=engine}
				<th class="engine-{$engine|lower}">{$engine}</th>
				{/foreach}
			</tr>
		</thead>
		<!-- body -->
		<tbody>
			{foreach from=$features item=feature}
				<tr>
					<td>{$feature}</td>
					{foreach from=$engines item=engine}
						<td class="engine-{$engine|lower}">
							{if isset($contents["{$engine}_{$feature}"])}
							{$contents["{$engine}_{$feature}"]}
							{/if}
						</td>
					{/foreach}
				</tr>
			{/foreach}
		</tbody>
	</table>
</div>
