# frozen_string_literal: true

# Controller for Venues base
class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  # GET /venues
  # GET /venues.json
  def index
    @venues = Venue.all.includes(:address)
    fresh_when(@venues)
  end

  # GET /venues/1
  # GET /venues/1.json
  def show
    fresh_when(@venue)
  end

  # GET /venues/new
  def new
    @venue = Venue.new
    @venue.build_address
  end

  # GET /venues/1/edit
  def edit
    return unless @venue.address.nil?

    @venue.build_address
  end

  # POST /venues
  # POST /venues.json
  def create
    @venue = Venue.new(venue_params)

    respond_to do |format|
      if @venue.save
        format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
        # format.json { render :show, status: :created, location: @venue }
      else
        format.html { redirect_to new_venue_path(@venue) }
        # format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venues/1
  # PATCH/PUT /venues/1.json
  def update
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
        # format.json { render :show, status: :ok, location: @venue }
      else
        format.html { redirect_to edit_venue_path(@venue) }
        # format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue.destroy
    respond_to do |format|
      format.html { redirect_to venues_url, notice: 'Venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params
      .require(:venue)
      .permit(
        :name, :site_url, :phone, :email,
        address_attributes: %i[line_one line_two city street state zip_code country]
      )
  end
end
