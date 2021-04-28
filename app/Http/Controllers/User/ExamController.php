<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\User\Course;
use App\Models\User\Option;
use App\Models\User\Question;
use App\Models\User\Exam;
use App\Models\User\Mark;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;

class ExamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_exams = Cache::remember('user_exams', 22 * 60, function () {
            $enroll_courses = User::find(Auth::user()->id)->enrollCourses;
            $exams = [];
            foreach ($enroll_courses as $enroll_course) {
                $exam = Course::find($enroll_course->course_id)->exams;
                $exams[] = $exam;
            }
            return  $exams;
        });

        return response()->json($user_exams);
        // $exams = Exam::all();
        // return response()->json($exams);
    }

    public function getExamQuestions($id)
    {
        $user_exam_questions = Cache::remember('user_exam_questions', 22 * 60, function () use($id){
            $questions = Exam::find($id)->questions;
            $exam_questions = [];
            foreach ($questions as $question) {
                $options = Question::find($question->id)->options;
                $exam = [
                    "git addquestion" => $question,
                    "options" => $options
                ];
                $exam_questions[] = $exam;
            }
            return $exam_questions;
        });
        return response()->json($user_exam_questions);
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
