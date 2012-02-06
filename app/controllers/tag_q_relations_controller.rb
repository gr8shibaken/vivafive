class TagQRelationsController < ApplicationController
  # GET /tag_q_relations
  # GET /tag_q_relations.json
  def index
    @tag_q_relations = TagQRelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_q_relations }
    end
  end

  # GET /tag_q_relations/1
  # GET /tag_q_relations/1.json
  def show
    @tag_q_relation = TagQRelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_q_relation }
    end
  end

  # GET /tag_q_relations/new
  # GET /tag_q_relations/new.json
  def new
    @tag_q_relation = TagQRelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_q_relation }
    end
  end

  # GET /tag_q_relations/1/edit
  def edit
    @tag_q_relation = TagQRelation.find(params[:id])
  end

  # POST /tag_q_relations
  # POST /tag_q_relations.json
  def create
    @tag_q_relation = TagQRelation.new(params[:tag_q_relation])

    respond_to do |format|
      if @tag_q_relation.save
        format.html { redirect_to @tag_q_relation, notice: 'Tag q relation was successfully created.' }
        format.json { render json: @tag_q_relation, status: :created, location: @tag_q_relation }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_q_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_q_relations/1
  # PUT /tag_q_relations/1.json
  def update
    @tag_q_relation = TagQRelation.find(params[:id])

    respond_to do |format|
      if @tag_q_relation.update_attributes(params[:tag_q_relation])
        format.html { redirect_to @tag_q_relation, notice: 'Tag q relation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_q_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_q_relations/1
  # DELETE /tag_q_relations/1.json
  def destroy
    @tag_q_relation = TagQRelation.find(params[:id])
    @tag_q_relation.destroy

    respond_to do |format|
      format.html { redirect_to tag_q_relations_url }
      format.json { head :ok }
    end
  end
end
