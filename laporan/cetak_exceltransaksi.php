<?php
header("Content-type: application/vnd.ms-excel;charset:UTF-8");
header("Content-type: application/image/png");
header("Content-Disposition: attachment; filename=Laporan Transaksi Bulanan.xls");

?>
<table width="100%" border="0" cellpadding="2" cellspacing="0">
			<thead>
				<tr>
				
				 	<td colspan="7" align="center">
				 		<h1 style="margin:0">Toko Bowo Elektronik</h1>
				 		<h4 style="margin:0;margin-top:4px;">Jl. Warakas 6 No.76, Jakarta</h4>
				 	</td>
				</tr>
				
				<tr><td colspan="7"><hr></td></tr>
				
				<tr>
				 	<td colspan="7" align="center"><h3 align="center">Daftar Transaksi Bulanan - Bulan Februari 2023</h3></td>
				</tr>

				<tr>
					<th width="8%" style="border:1px solid black">No.</th>
					<th width="15%" style="border:1px solid black">Tanggal</th>
					<th style="border:1px solid black">Jenis Keuangan</th>
					<th width="20%" style="border:1px solid black">Jumlah</th>
				</tr>
			</thead>
			<tbody>
									<tr>
						<td align="center" style="border:1px solid black">1.</td>
						<td align="center" style="border:1px solid black">2023-02-08</td>
						<td align="center" style="border:1px solid black">Pendapatan Harian</td>
						<td align="right" style="border:1px solid black;padding-right:10px">633.600</td>
					</tr>
								<tr>
					<td colspan="3" align="right" style="border:1px solid black"><b>Total Pendapatan :</b></td>
					<td align="right" style="border:1px solid black;padding-right:10px"><b>Rp. 633.600</b></td>
				</tr>
			</tbody>

		</table>