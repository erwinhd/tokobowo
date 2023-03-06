<?php
header("Content-type: application/vnd.ms-excel;charset:UTF-8");
header("Content-type: application/image/png");
header("Content-Disposition: attachment; filename=Laporan Transaksi Harian.xls");

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
				 	<td colspan="7" align="center">
				 		
													<h3 align="center">Daftar Transaksi Harian </h3>
						
				 	</td>
				</tr>

				<tr style="border:1px solid black;">
					<th width="6%" style="border:1px solid black">No.</th>
					<th width="15%" style="border:1px solid black">Tanggal</th>
					<th width="15%" style="border:1px solid black">No.Transaksi</th>
					<th width="15%" style="border:1px solid black">Kasir</th>
					<th width="15%" style="border:1px solid black">Total</th>
					<th width="8%" style="border:1px solid black">Diskon</th>
					<th width="20%" style="border:1px solid black">Total Akhir</th>
				</tr>
			</thead>
			<tbody style="border:1px solid black;">
				<tr><td align="center" colspan="7"><b>Data Tidak Ada</b></td></tr>						<tr>
							<td colspan="6" align="right" style="border:1px solid black;padding-right:10px"><b>Pendapatan Harian : </b></td>
							<td align="right" style="border:1px solid black;padding-right:10px"><b>Rp. 0</b></td>
						</tr>
								</tbody>

		</table>