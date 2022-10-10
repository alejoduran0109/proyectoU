<?php

namespace App\Http\Controllers;

use App\DataTables\GroupInvestigationDataTable;
use App\Http\Requests;
use App\Http\Requests\CreateGroupInvestigationRequest;
use App\Http\Requests\UpdateGroupInvestigationRequest;
use App\Repositories\GroupInvestigationRepository;
use Flash;
use App\Http\Controllers\AppBaseController;
use Response;

class GroupInvestigationController extends AppBaseController
{
    /** @var  GroupInvestigationRepository */
    private $groupInvestigationRepository;

    public function __construct(GroupInvestigationRepository $groupInvestigationRepo)
    {
        $this->groupInvestigationRepository = $groupInvestigationRepo;
    }

    /**
     * Display a listing of the GroupInvestigation.
     *
     * @param GroupInvestigationDataTable $groupInvestigationDataTable
     * @return Response
     */
    public function index(GroupInvestigationDataTable $groupInvestigationDataTable)
    {
        return $groupInvestigationDataTable->render('group_investigations.index');
    }

    /**
     * Show the form for creating a new GroupInvestigation.
     *
     * @return Response
     */
    public function create()
    {
        return view('group_investigations.create');
    }

    /**
     * Store a newly created GroupInvestigation in storage.
     *
     * @param CreateGroupInvestigationRequest $request
     *
     * @return Response
     */
    public function store(CreateGroupInvestigationRequest $request)
    {
        $input = $request->all();

        $groupInvestigation = $this->groupInvestigationRepository->create($input);

        Flash::success(__('messages.saved', ['model' => __('models/groupInvestigations.singular')]));

        return redirect(route('groupInvestigations.index'));
    }

    /**
     * Display the specified GroupInvestigation.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $groupInvestigation = $this->groupInvestigationRepository->find($id);

        if (empty($groupInvestigation)) {
            Flash::error(__('messages.not_found', ['model' => __('models/groupInvestigations.singular')]));

            return redirect(route('groupInvestigations.index'));
        }

        return view('group_investigations.show')->with('groupInvestigation', $groupInvestigation);
    }

    /**
     * Show the form for editing the specified GroupInvestigation.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $groupInvestigation = $this->groupInvestigationRepository->find($id);

        if (empty($groupInvestigation)) {
            Flash::error(__('messages.not_found', ['model' => __('models/groupInvestigations.singular')]));

            return redirect(route('groupInvestigations.index'));
        }

        return view('group_investigations.edit')->with('groupInvestigation', $groupInvestigation);
    }

    /**
     * Update the specified GroupInvestigation in storage.
     *
     * @param  int              $id
     * @param UpdateGroupInvestigationRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateGroupInvestigationRequest $request)
    {
        $groupInvestigation = $this->groupInvestigationRepository->find($id);

        if (empty($groupInvestigation)) {
            Flash::error(__('messages.not_found', ['model' => __('models/groupInvestigations.singular')]));

            return redirect(route('groupInvestigations.index'));
        }

        $groupInvestigation = $this->groupInvestigationRepository->update($request->all(), $id);

        Flash::success(__('messages.updated', ['model' => __('models/groupInvestigations.singular')]));

        return redirect(route('groupInvestigations.index'));
    }

    /**
     * Remove the specified GroupInvestigation from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $groupInvestigation = $this->groupInvestigationRepository->find($id);

        if (empty($groupInvestigation)) {
            Flash::error(__('messages.not_found', ['model' => __('models/groupInvestigations.singular')]));

            return redirect(route('groupInvestigations.index'));
        }

        $this->groupInvestigationRepository->delete($id);

        Flash::success(__('messages.deleted', ['model' => __('models/groupInvestigations.singular')]));

        return redirect(route('groupInvestigations.index'));
    }
}
