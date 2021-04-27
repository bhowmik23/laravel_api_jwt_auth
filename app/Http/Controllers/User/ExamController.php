<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\User\Option;
use App\Models\User\Question;
use App\Models\User\Exam;
use App\Models\User\Mark;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $exams = Exam::all();
        return response()->json($exams);
    }

    public function examQuestions($exam_id)
    {
        $exam = Exam::where('id', $exam_id)->first();
        return response()->json($exam);
    }

    public function getExamQuestions($exam_id)
    {
        $questions = Question::where("exam_id", $exam_id)->get();
        $exam_questions = [];
        foreach ($questions as $item) {
            $question = Question::where('id', $item->id)->first();
            $options = Option::where('question_id', $question->id)->get();
            $exam_question = [
                "exam_questions" => $question,
                "options" => $options,
            ];
            $exam_questions[] = $exam_question;
        }
        $exam_questions = $exam_questions;

        return response()->json($exam_questions);
    }

    public function getResult(Request $request)
    {
        $user_id = 0; // $request->user_id; //or Auth::user()->id;
        $exam_id = 0; // $request->exam_id;
        $total_question = 0;
        $total_correct = 0;
        $total_wrong = 0;
        $not_answer = 0;
        $total_gain_marks = 0;

        $data = [
            'user_id' => $user_id,
            'exam_id' => $exam_id,
            'total_question' => $total_question,
            'total_correct' => $total_correct,
            'total_wrong' => $total_wrong,
            'not_answer' => $not_answer,
            'total_gain_marks' => $total_gain_marks,
        ];

        $status = Mark::create($data);
        if ($status) {
            return response()->json($data);
        } else {
            return response()->json(['msg' => 'Somethings went wrong']);
        }
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Usre\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function show(Exam $exam)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Usre\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function edit(Exam $exam)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Usre\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Exam $exam)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Usre\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function destroy(Exam $exam)
    {
        //
    }
}
