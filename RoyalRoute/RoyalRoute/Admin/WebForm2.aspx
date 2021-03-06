<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="RoyalRoute.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="app-content content container-fluid">
      <div class="content-wrapper">
      <%--  <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">Basic Forms</h2>
          </div>
          <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
            <div class="breadcrumb-wrapper col-xs-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item"><a href="#">Form Layouts</a>
                </li>
                <li class="breadcrumb-item active"><a href="#">Basic Forms</a>
                </li>
              </ol>
            </div>
          </div>
        </div>--%>
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
    <div class="col-md-6">
			<div class="card" style="height: 943px;">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Project Info</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						<%--<div class="card-text">
							<p>This is the most basic and default form having form sections. To add form section use <code>.form-section</code> class with any heading tags. This form has the buttons on the bottom left corner which is the default position.</p>
						</div>--%>
						<%--<form class="form">
							<div class="form-body">
								<h4 class="form-section"><i class="icon-head"></i> Personal Info</h4>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput1">First Name</label>
											<input type="text" id="projectinput1" class="form-control" placeholder="First Name" name="fname">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput2">Last Name</label>
											<input type="text" id="projectinput2" class="form-control" placeholder="Last Name" name="lname">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput3">E-mail</label>
											<input type="text" id="projectinput3" class="form-control" placeholder="E-mail" name="email">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput4">Contact Number</label>
											<input type="text" id="projectinput4" class="form-control" placeholder="Phone" name="phone">
										</div>
									</div>
								</div>

								<h4 class="form-section"><i class="icon-clipboard4"></i> Requirements</h4>

								<div class="form-group">
									<label for="companyName">Company</label>
									<input type="text" id="companyName" class="form-control" placeholder="Company Name" name="company">
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput5">Interested in</label>
										<%--	<select id="projectinput5" name="interested" class="form-control">
												<option value="none" selected="" disabled="">Interested in</option>
												<option value="design">design</option>
												<option value="development">development</option>
												<option value="illustration">illustration</option>
												<option value="branding">branding</option>
												<option value="video">video</option>
											</select>--%>
										<%--</div>
									</div>

									<%--<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput6">Budget</label>
											<select id="projectinput6" name="budget" class="form-control">
												<option value="0" selected="" disabled="">Budget</option>
												<option value="less than 5000$">less than 5000$</option>
												<option value="5000$ - 10000$">5000$ - 10000$</option>
												<option value="10000$ - 20000$">10000$ - 20000$</option>
												<option value="more than 20000$">more than 20000$</option>
											</select>
										</div>
									</div>--%>
								<%--</div>--%>

								<%--<div class="form-group">
									<label>Select File</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" id="file">
										<span class="file-custom"></span>
									</label>
								</div>--%>

								<%--<div class="form-group">
									<label for="projectinput8">About Project</label>
									<textarea id="projectinput8" rows="5" class="form-control" name="comment" placeholder="About Project"></textarea>
								</div>--%>
							<%--</div>--%>

							<%--<div class="form-actions">
								<button type="button" class="btn btn-warning mr-1">
									<i class="icon-cross2"></i> Cancel
								</button>
								<button type="submit" class="btn btn-primary">
									<i class="icon-check2"></i> Save
								</button>
							</div>--%>
						<%--</form> --%>
					</div>
				</div>
			</div>
		</div></div></section></div></div> </div>
</asp:Content>
