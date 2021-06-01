<link rel="stylesheet" type="text/css" href="dt/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="dt/dataTables.bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="dt/jquery.dataTables.min.css" />
<link rel="stylesheet" type="text/css" href="dt/buttons.dataTables.min.css" />
<link rel="stylesheet" type="text/css" href="dt/responsive.bootstrap.min.css" />
<script src="dt/jquery-1.12.4.js"></script>
<script src="dt/bootstrap.min.js"></script>

<script src="dt/jquery.dataTables.min.js"></script>
<script src="dt/dataTables.buttons.min.js"></script>
<script src="dt/buttons.flash.min.js"></script>
<script src="dt/jszip.min.js"></script>
<script src="dt/pdfmake.min.js"></script>
<script src="dt/vfs_fonts.js"></script>
<script src="dt/buttons.html5.min.js"></script>
<script src="dt/buttons.print.min.js"></script>

<script src="dt/dataTables.bootstrap.min.js"></script>
<script src="dt/responsive.bootstrap.min.js"></script>


<script src="dt/dataTables.responsive.min.js"></script>
<script>
$(document).ready(function() {
	
    $('#example').DataTable( {
		dom: 'Bfrtip',
        buttons: [
         
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend: 'pdfHtml5',
				 messageTop: 'Patient Tracking System.',
                pageSize: 'A4',
				
                        customize: function (doc) {
                            doc.content.splice(1, 0, {
                                margin: [0, 0, 0, 12],
                                alignment: 'center',
                                image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAAuCAYAAACxkOBzAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6OTEzRTdEQkUxM0U1MTFFNTg3REFBQzExQTNBQTE1MTgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6OTEzRTdEQkYxM0U1MTFFNTg3REFBQzExQTNBQTE1MTgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5MTNFN0RCQzEzRTUxMUU1ODdEQUFDMTFBM0FBMTUxOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo5MTNFN0RCRDEzRTUxMUU1ODdEQUFDMTFBM0FBMTUxOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pmq0p78AAArESURBVHjarFl5bBTn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'
                            });
                        }
            },{ 
				extend: 'print',
				messageTop: 'The reporting of patient.',
				
                customize: function ( win ) {
					
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="http://datatables.net/media/images/logo-fade.png" style="position:absolute; top:-10%; left:30%;" />'
                        );
 
                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( 'font-size', 'inherit' );
                }
			},
            {
                text: 'Register Patient',
                action: function(e, dt , node , config){
                    window.location = 'register.php';
                }
            }
        ],
        
        responsive: {
            details: {
                display: $.fn.dataTable.Responsive.display.modal( {
                    header: function ( row ) {
                        var data = row.data();
                        return 'Details for '+data[0]+' '+data[1];
                    }
                } ),
                renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
                    tableClass: 'table'
                } ),
				responsive: true,
    columnDefs: [
        { responsivePriority: 1, targets: 0 },
        { responsivePriority: 2, targets: -1 }
    ]
				
            }
        }
    } );
} );
</script>