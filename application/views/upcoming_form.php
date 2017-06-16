<!-- bootstrap-daterangepicker -->
<link href="<?php echo base_url("vendors/bootstrap-daterangepicker/daterangepicker.css"); ?>" rel="stylesheet">
<!-- Datatables -->
<link href="<?php echo base_url("vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"); ?>" rel="stylesheet">
<link href="<?php echo base_url("vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"); ?>" rel="stylesheet">
<link href="<?php echo base_url("vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"); ?>" rel="stylesheet">
<link href="<?php echo base_url("vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"); ?>" rel="stylesheet">
<link href="<?php echo base_url("vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"); ?>" rel="stylesheet">

<div class="page-title">
  <div class="title_left">
    <h3>Upcoming Event | Add New</h3>
  </div>
</div>
<div class="clearfix"></div>

<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>Form</h2>
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
          <li><a class="close-link"><i class="fa fa-close"></i></a>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
      <div class="x_content">
	      <form
	      	class="form-horizontal form-label-left" method="POST" enctype="multipart/form-data"
	      	id="form" action="<?php echo base_url("upcoming/add"); ?>" novalidate>

          <!-- elements in form tag -->
	        <p>Mohon masukkan data-data sesuai dengan yang seharusnya. Terima Kasih</p>
	        <?php
	        if(isset($info)){
        	?>
        		<div class="alert <?php echo $info["class"]; ?>"><?php echo $info["text"]; ?></div>
	        <?php
	        }
	        ?>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="asset_id">
              Aset <span class="required">*</span>
            </label>
            <div class="col-md-9 col-sm-9 col-xs-12">
              <table id="table_asset" class="table table-hover table-striped table-bordered dt-responsive" cellspacing="0" width="100%">
                <thead>
                  <tr>
      				      <th><i>Brand</i></th>
      				      <th><i>Tipe</i></th>
      				      <th><i>Group</i></th>
      				      <th><i>Hostname</i></th>
      				      <th><i>Ip Address</i></th>
      				      <th>Lokasi</th>
      				      <th>Status</th>
      				      <th>Sistem Operasi</th>
      				    </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
              <button
                type="button" class="btn btn-default btn-sm" data-toggle="modal"
                data-target=".modal-asset">
                Pilih Asset
              </button>
              <input type="hidden" required="required" name="asset_id" id="asset_id" />
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="reminder_date">
              Tanggal Pengingat <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input
                type="text" class="form-control col-md-7 col-xs-12"
                id="reminder_date" name="reminder_date" placeholder="Reminder Date" required="required" />
              <span class="fa fa-calendar-o form-control-feedback right" aria-hidden="true"></span>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-sm-3 col-md-3 col-xs-12" for="description">Deskripsi</label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea
                class="form-control resizable_textarea" name="description"
                id="description" placeholder="type a text description" required="required"></textarea>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="status">
              Status <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="status" id="status" class="form-control col-md-7 col-xs-12">
                <option value="WAITING REMINDER">MENUJU TANGGAL PENGINGAT</option>
                <option value="PENDING">TERTUNDA</option>
                <option value="DONE">SELESAI</option>
              </select>
            </div>
          </div>
          <div class="item form-group" style="display: none;" id="activity_field">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="activity">
              Tipe Kegiatan <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="activity" id="activity" class="form-control col-md-7 col-xs-12">
                <option value=""></option>
                <option value="MAINTENANCE">MAINTENANCE</option>
                <option value="TROUBLESHOOT">TROUBLESHOOT</option>
              </select>
            </div>
          </div>
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3 col-sm-offset-3">
              <button type="submit" class="btn btn-success">Submit</button>
              <button type="reset" class="btn btn-warning">Clear</button>
            </div>
          </div>
          <!-- elements in form tag -->
	      </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade modal-asset" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel2">Daftar Aset</h4>
      </div>
      <div class="modal-body">
        <table id="datatable" class="table table-hover table-striped table-bordered" cellspacing="0">
				  <thead>
				    <tr>
				      <th><i>Brand</i></th>
				      <th><i>Tipe</i></th>
				      <th><i>Group</i></th>
				      <th><i>Hostname</i></th>
				      <th><i>Ip Address</i></th>
				      <th>Lokasi</th>
				      <th>Status</th>
				      <th>Sistem Operasi</th>
              <th>Aksi</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<?php
				  	foreach($asset as $row){
						?>
							<tr class="<?php echo $row["ACTIVE"]=="N" ? "red":""; ?>" style="cursor:pointer;">
								<td><?php echo $row["BRAND"] ?></td>
								<td><?php echo $row["TYPE"] ?></td>
								<td><?php echo $row["GROUP"] ?></td>
								<td><?php echo $row["HOSTNAME"] ?></td>
								<td><?php echo $row["IP_ADDRESS"] ?></td>
								<td><?php echo $row["LOCATION"] ?></td>
								<td><?php echo $row["ACTIVE"] ?></td>
								<td><?php echo $row["OPERATING_SYSTEM"] ?></td>
                <td>
                  <button type="button" class="btn btn-primary btn-xs" onClick="table_select_asset(event)" data-id="<?php echo $row["ID"]; ?>">Pilih</button>
                </td>
							</tr>
						<?php
				  	}
				  	?>
				  </tbody>
				</table>
      </div>
    </div>
  </div>
</div>


<!-- validator -->
<script src="<?php echo base_url("vendors/validator/validator.js"); ?>"></script>
<!-- Autosize -->
<script src="<?php echo base_url("vendors/autosize/dist/autosize.min.js"); ?>"></script>
<!-- bootstrap-daterangepicker -->
<script src="<?php echo base_url("vendors/moment/min/moment.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/bootstrap-daterangepicker/daterangepicker.js"); ?>"></script>
<!-- Datatables -->
<script src="<?php echo base_url("vendors/datatables.net/js/jquery.dataTables.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-buttons/js/dataTables.buttons.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-buttons/js/buttons.flash.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-buttons/js/buttons.html5.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-buttons/js/buttons.print.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-responsive/js/dataTables.responsive.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"); ?>"></script>
<script src="<?php echo base_url("vendors/datatables.net-scroller/js/dataTables.scroller.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/jszip/dist/jszip.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/pdfmake/build/pdfmake.min.js"); ?>"></script>
<script src="<?php echo base_url("vendors/pdfmake/build/vfs_fonts.js"); ?>"></script>
